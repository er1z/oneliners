<?php

$client = self::createClient();

/**
 * @var $user User
 */
$user = self::$container->get(UserRepository::class)->findOneBy([]);

$token = new UsernamePasswordToken($user, '', 'main', $user->getRoles());
$tokenStorage = self::$container->get(TokenStorageInterface::class);
$tokenStorage->setToken($token);

$session = self::$container->get('session');
$session->set('_security_main', serialize($token));
$session->save();

$client->getCookieJar()->set(
    new Cookie($session->getName(), $session->getId())
);

$response = $client->request('GET', '/');
